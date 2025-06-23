function mostrarJustificativa() {
        document.getElementById('justificativaDiv').style.display = 'block';
        document.getElementById('btnRecusar').disabled = true;
      }

      function enviarJustificativa() {
        const motivo = document.getElementById('justificativa').value.trim();
        if (!motivo) {
          alert('Por favor, informe o motivo da recusa.');
          return;
        }
        alert('Matrícula recusada.\nMotivo: ' + motivo);
        // Aqui você pode adicionar a lógica para enviar o motivo ao servidor
        document.getElementById('justificativaDiv').style.display = 'none';
        document.getElementById('btnRecusar').disabled = false;
        document.getElementById('justificativa').value = '';
      }

const turmasDisponiveis = [
  { id: 1, nome: "1º Ano A - Manhã" },
  { id: 2, nome: "1º Ano B - Tarde" },
  { id: 3, nome: "2º Ano A - Manhã" }
];

let turmaEscolhida = null;

function mostrarTurmas() {
  const lista = document.getElementById('listaTurmas');
  lista.innerHTML = '';
  turmasDisponiveis.forEach(turma => {
    const li = document.createElement('li');
    li.style.marginBottom = '8px';
    li.innerHTML = `<button class="button aceitar" style="min-width:unset; font-size:16px; padding:6px 16px;" onclick="selecionarTurma('${turma.nome}', ${turma.id})">${turma.nome}</button>`;
    lista.appendChild(li);
  });
  document.getElementById('alocarDiv').style.display = 'none';
  document.getElementById('modalTurmas').style.display = 'flex';
}

function fecharModalTurmas() {
  document.getElementById('modalTurmas').style.display = 'none';
  turmaEscolhida = null;
}

function selecionarTurma(nomeTurma, idTurma) {
  turmaEscolhida = { id: idTurma, nome: nomeTurma };
  document.getElementById('turmaSelecionada').textContent = `Turma selecionada: ${nomeTurma}`;
  document.getElementById('alocarDiv').style.display = 'block';
}

function alocarTurma() {
  if (turmaEscolhida) {
    alert('Matrícula aceita e aluno alocado na turma: ' + turmaEscolhida.nome);
    // Redireciona para a página de outras fichas
    window.location.href = "fichas.html"; // Altere para o endereço correto da sua página
  }
}

function revisarFicha(nome) {
    window.location.href = 'ficha.html';
  }