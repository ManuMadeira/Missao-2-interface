# Missao-2-interface


# ☕ Relatório de Entrega: Projeto Cat Café

Este projeto foi desenvolvido como parte do **Trabalho Prático (Missão 2)**, focado na aplicação de conceitos fundamentais do Flutter como componentização, navegação e organização modular.

## 1. Domínio e Entidade
Para esta atividade, optei pelo **Painel de Pedidos de Cafeteria (Opção 4)**. O projeto foi nomeado **Cat Café** e utiliza uma identidade visual personalizada em tons de lilás e azul bebê.
* **Entidade Principal:** A classe `Order` foi criada para representar o domínio.
* **Atributos:** Foram implementados campos para ID, nome do cliente, item principal, preço, status e observações.

## 2. Organização do Projeto
A estrutura de arquivos foi organizada de forma modular para garantir a separação de responsabilidades:
* **`lib/models/`**: Definição da classe de domínio.
* **`lib/mocks/`**: Centralização dos dados simulados com 4 registros coerentes.
* **`lib/components/`**: Widgets reutilizáveis para otimização do código.
* **`lib/pages/`**: Telas de listagem e de detalhes.

## 3. Componentização e UI
Extraí dois componentes principais para garantir a reutilização da interface:
* **`OrderCard`**: Componente próprio utilizado na `ListView` para exibir o resumo de cada pedido (cliente e item)
* **`StatusBadge`**: Widget para exibir o status do pedido de forma destacada, facilitando a leitura visual.

## 4. Funcionalidades de Navegação e Diálogo
* **Navegação entre Telas**: A aplicação utiliza `Navigator.push` para levar o usuário da listagem principal até a tela de detalhes. O objeto `Order` é passado via construtor para garantir que os dados corretos sejam exibidos.
* **Diálogo Funcional**: Implementei um `AlertDialog` funcional na tela de detalhes. Ele é utilizado para confirmar uma ação contextual (a finalização/entrega do pedido).

## 5. Implementação Técnica
* O código utiliza **`ListView.builder`** para uma listagem eficiente dos dados mockados.
* Foram aplicados corretamente os conceitos de **`StatelessWidget`** e **`StatefulWidget`** conforme a necessidade de cada componente.
* A interface foi construída utilizando elementos visuais como `Card`, `CircleAvatar` e `Icon` para enriquecer a experiência do usuário.

---