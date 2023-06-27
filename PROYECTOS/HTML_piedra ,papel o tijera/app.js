const PIEDRA = "piedra";
const PAPEL = "papel";
const TIJERA = "tijera";

const TIE = 0;
const WIN = 1;
const LOST = 2;

let isPlaying = false;

const piedraBtn = document.getElementById("piedra");
const papelBtn = document.getElementById("papel");
const tijeraBtn = document.getElementById("tijera");
const resultText = document.getElementById("start-text");
const userImg = document.getElementById("user-img");
const machineImg = document.getElementById("machine-img");

piedraBtn.addEventListener("click", () => {
   play(PIEDRA);
});
papelBtn.addEventListener("click", () => {
    play(PAPEL);
});
tijeraBtn.addEventListener("click", () => {
    play(TIJERA);
});

function play(userOpcion) {
    if(isPlaying) return;

    isPlaying = true;

    userImg.src = "img/" + userOpcion + ".png";

    resultText.innerHTML = "Empezando!";

    const interval = setInterval(function(){
        const machineOpcion = clacMachineOpcion();
        machineImg.src = "img/" + machineOpcion + ".png";
    }, 200);

    setTimeout(function () {

        clearInterval (interval);

        const machineOpcion = clacMachineOpcion();
        const result = calcResult(userOpcion, machineOpcion);
    
        machineImg.src = "img/" + machineOpcion + ".png";

        switch (result) {
            case TIE:
                resultText.innerHTML = "Empatados!";
                break;
            case WIN:
                resultText.innerHTML = "Ganaste!";
                break;
            case LOST:
                resultText.innerHTML = "Perdiste!";
                break;
        }
        isPlaying = false;
    }, 2000);
}

function clacMachineOpcion() {
    const number = Math.floor(Math.random() * 3);
    switch (number) {
        case 0:
            return PIEDRA;
        case 1:
            return PAPEL;
        case 2:
            return TIJERA;
    }
}

function calcResult(userOpcion, machineOpcion) {
    if (userOpcion === machineOpcion) {
        return TIE;

    } else if (userOpcion === PIEDRA) {
    
        if (machineOpcion === PAPEL) return LOST;
        if (machineOpcion === TIJERA) return WIN;

    } else if (userOpcion === PAPEL) {

        if (machineOpcion === TIJERA) return LOST;
        if (machineOpcion === PIEDRA) return WIN;

    } else if (userOpcion === TIJERA) {

        if (machineOpcion === PIEDRA) return LOST;
        if (machineOpcion === PAPEL) return WIN;

    }
}