// Toggle active state
function toggleSwitch(element) {
    element.classList.toggle("active");
}

// Ensure all links retain original styling
document.querySelectorAll('a').forEach(link => {
    link.style.color = 'inherit';
    link.style.textDecoration = 'none';
});

// Dropdown toggle logic
const dropdownOption = document.querySelector('.option');
dropdownOption.addEventListener('click', function (event) {
    event.stopPropagation(); // Prevent click propagation
    this.classList.toggle('open'); // Toggle the dropdown menu visibility
});

// Close the dropdown when clicking outside
document.addEventListener('click', () => {
    dropdownOption.classList.remove('open');
});

// Capture the selection from the dropdown menu
let selectedDepartment = '';
document.querySelectorAll('.dropdown-menu li').forEach(item => {
    item.addEventListener('click', function () {
        selectedDepartment = this.textContent;
        const departmentDropdown = document.querySelector('.dropdown');
        departmentDropdown.textContent = selectedDepartment; // Update dropdown text
        dropdownOption.classList.remove('open'); // Close dropdown
        validateForm(); // Re-validate the form
    });
});

// Input fields and button references
const fullnameInput = document.getElementById('fullname');
const emailInput = document.getElementById('email-8');
const bookButton = document.getElementById('book-appointment');
const message = document.getElementById('message');
const appointmentTimeInput = document.getElementById('appointment-time');

// Form validation to enable the button
function validateForm() {
    if (fullnameInput.value.trim() && emailInput.value.trim()) {
        bookButton.classList.add('active');
        bookButton.disabled = false;
    } else {
        bookButton.classList.remove('active');
        bookButton.disabled = true;
    }
}

// Attach event listeners for dynamic validation
[fullnameInput, emailInput].forEach(input => {
    input.addEventListener('input', validateForm);
});

// Save appointment details and reset the form
function saveAppointmentDetails() {
    const fullname = fullnameInput.value.trim();
    const email = emailInput.value.trim();
    const appointmentTime = appointmentTimeInput.value;

    if (!fullname || !email) return;

    console.log('Appointment Details Saved:');
    console.log('Full Name:', fullname);
    console.log('Email:', email);
    console.log('Department:', selectedDepartment || 'Not Selected');
    console.log('Appointment Time:', appointmentTime || 'Not Set');

    // Store in localStorage
    localStorage.setItem('appointmentDetails', JSON.stringify({
        fullname,
        email,
        department: selectedDepartment || 'Not Selected',
        appointmentTime: appointmentTime || 'Not Set',
    }));

    // Reset the form
    fullnameInput.value = '';
    emailInput.value = '';
    appointmentTimeInput.value = '';
    const departmentDropdown = document.querySelector('.dropdown');
    departmentDropdown.textContent = 'Please Select';
    selectedDepartment = '';
    validateForm(); // Re-disable the button after resetting
}

// Attach the button click handler
bookButton.addEventListener('click', saveAppointmentDetails);

// Attach an event listener for the time input
appointmentTimeInput.addEventListener('change', () => {
    const appointmentTime = appointmentTimeInput.value;
    console.log('Appointment time set to:', appointmentTime);
});

// Enable form validation dynamically
validateForm();


