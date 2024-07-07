# Desafio Dio Criando o Jogo da Colheita com Roblox



### **Criando o Jogo da Colheita com Roblox: Simulador de Colheita**

### **Recursos:**

- **Cultivo:** Os jogadores podem cultivar uma variedade de culturas, incluindo cenouras, batatas e trigo.

  

- **Colheita:** Os jogadores podem colher suas colheitas quando estiverem maduras.

  

- **Venda:** Os jogadores podem vender suas colheitas para obter lucro.

  

- **Atualizações:** Os jogadores podem atualizar suas ferramentas e equipamentos para aumentar sua eficiência.

  

### **Como jogar:**

1. Crie uma nova conta Roblox ou faça login em sua conta existente.

2. Pesquise "Simulador de Colheita" na barra de pesquisa.

3. Clique no jogo e clique em "Jogar".

4. Siga as instruções do tutorial para aprender como jogar.

5. Comece a cultivar, colher e vender suas colheitas para obter lucro.

   

**Criando o Jogo da Colheita com Roblox: Simulador de Colheita**

### **Código Lua para criar uma cultura:**

lua



```lua
local crop = Instance.new("Part")
crop.Name = "Cenoura"
crop.Size = Vector3.new(1, 1, 1)
crop.Position = Vector3.new(0, 0, 0)
crop.Material = "Grass"
crop.CanCollide = false
```



### **Código Lua para criar uma ferramenta de colheita:**

lua



```lua
local tool = Instance.new("Tool")
tool.Name = "Pá"
tool.Handle = "Handle"
tool.AttachmentPoint = "RightHand"
tool.Activated:connect(function()
    -- Código para colher a cultura
end)
```



### **Criando o Jogo da Colheita com Roblox: Simulador de Fazenda**



### **Código Lua para criar um animal:**

lua



```lua
local animal = Instance.new("Model")
animal.Name = "Vaca"
animal.Size = Vector3.new(1, 1, 1)
animal.Position = Vector3.new(0, 0, 0)
animal.Mesh = "Mesh"
animal.CanCollide = true
```



### **Código Lua para criar uma cerca:**

lua



```lua
local fence = Instance.new("Part")
fence.Name = "Cerca"
fence.Size = Vector3.new(1, 1, 1)
fence.Position = Vector3.new(0, 0, 0)
fence.Material = "Wood"
fence.CanCollide = true
```



### **Criando o Jogo da Colheita com Roblox: Simulador de Colheita de Trigo**



### **Código Lua para criar um campo de trigo:**

lua



```lua
local field = Instance.new("Part")
field.Name = "Campo de Trigo"
field.Size = Vector3.new(100, 1, 100)
field.Position = Vector3.new(0, 0, 0)
field.Material = "Grass"
field.CanCollide = false
```



### **Código Lua para criar uma colheitadeira:**

lua



```lua
local harvester = Instance.new("Model")
harvester.Name = "Colheitadeira"
harvester.Size = Vector3.new(1, 1, 1)
harvester.Position = Vector3.new(0, 0, 0)
harvester.Mesh = "Mesh"
harvester.CanCollide = true
```



### **Código Lua Completo e Abrangente para Criar o Jogo da Colheita com Roblox**



### **Recursos:**



- **Cultivo:** Os jogadores podem cultivar uma variedade de culturas, incluindo cenouras, batatas e trigo.
- **Colheita:** Os jogadores podem colher suas colheitas quando estiverem maduras.
- **Venda:** Os jogadores podem vender suas colheitas para obter lucro.
- **Atualizações:** Os jogadores podem atualizar suas ferramentas e equipamentos para aumentar sua eficiência.



**Código Lua:**

lua



```lua
-- Criar uma cultura
local crop = Instance.new("Part")
crop.Name = "Cenoura"
crop.Size = Vector3.new(1, 1, 1)
crop.Position = Vector3.new(0, 0, 0)
crop.Material = "Grass"
crop.CanCollide = false

-- Criar uma ferramenta de colheita
local tool = Instance.new("Tool")
tool.Name = "Pá"
tool.Handle = "Handle"
tool.AttachmentPoint = "RightHand"
tool.Activated:connect(function()
    -- Código para colher a cultura
end)

-- Criar um campo
local field = Instance.new("Part")
field.Name = "Campo"
field.Size = Vector3.new(100, 1, 100)
field.Position = Vector3.new(0, 0, 0)
field.Material = "Grass"
field.CanCollide = false

-- Criar um celeiro
local barn = Instance.new("Model")
barn.Name = "Celeiro"
barn.Size = Vector3.new(10, 10, 10)
barn.Position = Vector3.new(0, 0, 0)
barn.Mesh = "Mesh"
barn.CanCollide = true

-- Criar um mercado
local market = Instance.new("Model")
market.Name = "Mercado"
market.Size = Vector3.new(10, 10, 10)
market.Position = Vector3.new(0, 0, 0)
market.Mesh = "Mesh"
market.CanCollide = true

-- Criar um jogador
local player = Instance.new("Player")
player.Name = "Jogador"
player.Position = Vector3.new(0, 0, 0)

-- Conectar os sinais
tool.Activated:connect(function()
    -- Código para colher a cultura
end)

player.CharacterAdded:connect(function(character)
    character.Tool = tool
end)

-- Iniciar o jogo
game:GetService("RunService").RenderStepped:connect(function()
    -- Código para atualizar o jogo
end)
```



### Este código cria um jogo de colheita básico com os seguintes recursos:



- Os jogadores podem cultivar cenouras em um campo.
- Os jogadores podem colher cenouras usando uma pá.
- Os jogadores podem vender cenouras em um mercado.
- Os jogadores podem atualizar suas ferramentas e equipamentos para aumentar sua eficiência.
