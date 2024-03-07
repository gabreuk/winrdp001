<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Formulário</title>
</head>
<body>
  <h2>Formulário de Cadastro</h2>
  <form id="myForm">
    <label for="username">Usuário:</label>
    <input type="text" id="username" name="username" required>
    <br>
    <label for="password">Senha:</label>
    <input type="password" id="password" name="password" required>
    <br>
    <button type="button" onclick="saveData()">Salvar</button>
  </form>

  <script>
    function saveData() {
      var formData = {};
      formData.username = document.getElementById("username").value;
      formData.password = document.getElementById("password").value;

      // Convertendo para string JSON
      var jsonData = JSON.stringify(formData);

      // Salvando os dados localmente
      localStorage.setItem("formData", jsonData);

      alert("Dados salvos localmente.");
    }
  </script>
</body>
</html>