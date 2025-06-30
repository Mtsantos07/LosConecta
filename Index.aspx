<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="ProjetoIsaque2.index" %>


<!DOCTYPE html>
<html lang="pt-BR" class="scroll-smooth">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>LosConecta - Plataforma de Educação para Todos</title>

    
    <script src="https://cdn.tailwindcss.com"></script>

    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

   
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet" />

    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-50 min-h-screen flex flex-col">
    <form id="form1" runat="server">
        <header class="bg-white shadow sticky top-0 z-50">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex justify-between items-center h-16">
                    <a href="#" class="flex items-center space-x-2">
                        <img src="https://storage.googleapis.com/a1aa/image/34fa2d77-04ea-4e35-fa36-5eaaa60aabcd.jpg" alt="Logo EduConecta" class="h-10 w-10 rounded" />
                        <span class="text-2xl font-bold text-blue-700">LosConecta</span>
                    </a>

                    <nav class="hidden md:flex space-x-8 font-semibold text-gray-700">
                        <a href="conteudos.aspx" class="hover:text-blue-600 transition">Conteúdos</a>
                        <a href="ProfessoresMentores.aspx" class="hover:text-blue-600 transition">Mentores</a>
                        <a href="AgendamentosEncontro.aspx" class="hover:text-blue-600 transition">Agendamentos</a>
                        <a href="CategoriasConteudo.aspx" class="hover:text-blue-600 transition">Relatórios</a>
                        <a href="FaleConosco.aspx" class="hover:text-blue-600 transition">Fale Conosco</a>
                        <a href="Alunos.aspx" class="hover:text-blue-600 transition">Alunos</a>
                        <a href="Administradores.aspx" class="hover:text-blue-600 transition">Administradores</a>
                       <a href="Usuarios.aspx" class="hover:text-blue-600 transition">Usuarios</a>
                         <a href="Certificados.aspx" class="hover:text-blue-600 transition">Certificados</a>
                   

                    </nav>

                    <div class="hidden md:flex items-center space-x-4">
                        <a href="login.aspx" class="text-blue-700 font-semibold hover:underline">Login</a>
                    </div>

                    <button id="mobile-menu-button" type="button" aria-label="Abrir menu"
                            class="md:hidden text-gray-700 hover:text-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-600">
                        <i class="fas fa-bars fa-lg"></i>
                    </button>
                </div>
            </div>

           
            <nav id="mobile-menu" class="md:hidden bg-white border-t border-gray-200 hidden" aria-label="Menu móvel">
                <a href="conteudos.aspx" class="block px-4 py-3 text-gray-700 font-semibold hover:bg-blue-50 hover:text-blue-700">Conteúdos</a>
                <a href="mentores.aspx" class="block px-4 py-3 text-gray-700 font-semibold hover:bg-blue-50 hover:text-blue-700">Mentores</a>
                <a href="agendamentos.aspx" class="block px-4 py-3 text-gray-700 font-semibold hover:bg-blue-50 hover:text-blue-700">Agendamentos</a>
                <a href="relatorio.aspx" class="block px-4 py-3 text-gray-700 font-semibold hover:bg-blue-50 hover:text-blue-700">Relatórios</a>
                <a href="faleconosco.aspx" class="block px-4 py-3 text-gray-700 font-semibold hover:bg-blue-50 hover:text-blue-700">Fale Conosco</a>
                <a href="login.aspx" class="block px-4 py-3 text-blue-700 font-semibold hover:bg-blue-50 hover:text-blue-700">Login</a>
                <a href="Certificados.aspx" class="block px-4 py-3 text-blue-700 font-semibold hover:bg-blue-50 hover:text-blue-700">Certificados</a>
      </nav>
        </header>

        <main class="flex-grow max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
            <!-- Hero Section -->
            <section class="text-center max-w-3xl mx-auto mb-12">
                <h1 class="text-4xl sm:text-5xl font-extrabold text-blue-700 mb-4">
                    LosConecta: Plataforma de Educação para Todos
                </h1>
                <p class="text-lg sm:text-xl text-gray-700">
                    Plataforma educacional gratuita para comunidades carentes. Conteúdos organizados por faixa etária e área do conhecimento, com recursos multimídia e agendamento de encontros online com mentores via Google Meet.
                </p>
                <a href="login.aspx" class="inline-block mt-8 px-8 py-3 bg-blue-700 text-white font-semibold rounded-md shadow hover:bg-blue-800 transition">
                    Entrar / Cadastrar
                </a>
            </section>
        </main>
    </form>

    <script>
        
        const mobileMenuButton = document.getElementById('mobile-menu-button');
        const mobileMenu = document.getElementById('mobile-menu');

        mobileMenuButton.addEventListener('click', () => {
            mobileMenu.classList.toggle('hidden');
        });

        
        const dataHoraInput = document.getElementById('dataHora');
        if (dataHoraInput) {
            const now = new Date();
            const localISOTime = now.toISOString().slice(0, 16);
            dataHoraInput.min = localISOTime;
        }
    </script>
</body>
</html>
