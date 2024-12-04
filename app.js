async function carregarAmegakure() {
    const url = `https://narutodb.xyz/api/village/0`; // ID da vila Amegakure
    try {
        const response = await fetch(url);
        if (!response.ok) throw new Error('Erro na resposta da API: ' + response.status);

        const res = await response.json();
        console.log('Village Details Response:', res);

        if (!res.characters || res.characters.length === 0) {
            console.error('Nenhum personagem encontrado para Amegakure.');
            return;
        }

        for (const character of res.characters) {
            const name = character.name;
            const sex = character.personal?.sex || 'N/A';
            const affiliation = 'Amegakure';
            const voice = character.voiceActors?.japanese || 'N/A';

            const insertUrl = `./php/amegakure_inserir.php?name=${name}&sex=${sex}&affiliation=${affiliation}&voice=${voice}`;
            console.log(`Inserindo personagem: ${name}, ${sex}, ${affiliation}, ${voice}`);
            const insertResponse = await fetch(insertUrl);
            console.log('Resposta da inserção:', insertResponse);
        }

        carregarPersonagens();
    } catch (error) {
        console.error('Erro ao carregar detalhes de Amegakure:', error);
    }
}

async function carregarPersonagens() {
    const url = `./php/amegakure_listar.php`;
    try {
        const response = await fetch(url);
        if (!response.ok) throw new Error('Erro na resposta da API: ' + response.status);

        const res = await response.json();
        console.log('Personagens de Amegakure:', res);

        var tabela = document.getElementById('tabelaAmegakure');
        tabela.innerHTML = '';

        for (const personagem of res) {
            tabela.innerHTML += `<tr>
                                    <td>${personagem.id}</td>
                                    <td>${personagem.name}</td>
                                    <td>${personagem.sex}</td>
                                    <td>${personagem.affiliation}</td>
                                    <td>${personagem.voice}</td>
                                    <td>
                                        <button class="btn btn-success" data-bs-toggle="modal"
                                            data-bs-target="#modalAmegakure" onclick="abrirAmegakure(${personagem.id})">Alterar</button>
                                    </td>
                                    <td>
                                        <button class="btn btn-danger" onclick="excluirAmegakure(${personagem.id})">Excluir</button>
                                    </td>
                                </tr>`;
        }
    } catch (error) {
        console.error('Erro ao carregar personagens de Amegakure:', error);
    }
}

async function abrirAmegakure(id) {
    var inputId = document.getElementById('id');
    var inputName = document.getElementById('name');
    var inputSex = document.getElementById('sex');
    var inputAffiliation = document.getElementById('affiliation');
    var inputVoice = document.getElementById('voice');

    if (id == 0) {
        document.getElementById('tituloAmegakure').innerHTML = 'Inserindo novo personagem de Amegakure';
        inputId.value = '';
        inputName.value = '';
        inputSex.value = '';
        inputAffiliation.value = 'Amegakure';
        inputVoice.value = '';
    } else {
        document.getElementById('tituloAmegakure').innerHTML = `Alterando personagem de Amegakure ${id}`;

        var url = `./php/amegakure_selecionar.php?id=${id}`;
        const res = await fetch(url).then(resposta => resposta.json());
        console.log(res);

        inputId.value = res[0].id;
        inputName.value = res[0].name;
        inputSex.value = res[0].sex;
        inputAffiliation.value = res[0].affiliation;
        inputVoice.value = res[0].voice;
    }
}

async function salvarAmegakure() {
    var inputId = document.getElementById('id');
    var inputName = document.getElementById('name');
    var inputSex = document.getElementById('sex');
    var inputAffiliation = document.getElementById('affiliation');
    var inputVoice = document.getElementById('voice');
    var url = '';

    if (inputId.value == '') {
        url = `./php/amegakure_inserir.php?name=${inputName.value}&sex=${inputSex.value}&affiliation=${inputAffiliation.value}&voice=${inputVoice.value}`;
        await fetch(url);
    } else {
        url = `./php/amegakure_alterar.php?id=${inputId.value}&name=${inputName.value}&sex=${inputSex.value}&affiliation=${inputAffiliation.value}&voice=${inputVoice.value}`;
        await fetch(url);
    }
    carregarPersonagens();
}

async function excluirAmegakure(id) {
    if (!confirm('Deseja realmente excluir este personagem de Amegakure?')) return;

    var url = `./php/amegakure_excluir.php?id=${id}`;
    await fetch(url);
    carregarPersonagens();
}

window.onload = carregarPersonagens;
