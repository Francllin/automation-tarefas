class NovaTarefaElements {
    inptNomeTarefa = () => { return '#app > section > form > input[type=text]' }
    btnSubmit = () => { return '#app > section > form > button:nth-child(3)' }
    txtTarefa = () => {return '#app > section > ul > li > span'}
}

export default NovaTarefaElements;
