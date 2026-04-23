const sampleBtn = document.getElementById('sample-btn');
const statusMessage = document.getElementById('status');
const form = document.getElementById('prediction-form');

function getRandomValue(min, max) {
    return (Math.random() * (max - min) + min).toFixed(2);
}

function fillSampleValues() {
    const inputs = form.querySelectorAll('input[type=number]');
    inputs.forEach((input, index) => {
        let value;
        if (index % 3 === 0) {
            value = getRandomValue(5, 20);
        } else if (index % 3 === 1) {
            value = getRandomValue(0.05, 2.0);
        } else {
            value = getRandomValue(10, 100);
        }
        input.value = value;
    });
    statusMessage.textContent = 'Sample values ready — submit to predict!';
    statusMessage.classList.remove('hidden');
}

sampleBtn.addEventListener('click', fillSampleValues);

form.addEventListener('submit', () => {
    statusMessage.textContent = 'Analyzing the data, please wait...';
    statusMessage.classList.remove('hidden');
});
