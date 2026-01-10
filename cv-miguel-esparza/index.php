<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CV - Miguel Esparza</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <style>
        body { 
            margin: 0; 
            padding: 20px 0; 
            background-color: #f0f2f5; /* Fondo gris suave */
            display: flex; 
            flex-direction: column; 
            align-items: center; 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Estilo de la "hoja de papel" */
        .page-container {
            margin-bottom: 20px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
            background: white;
            line-height: 0; /* Elimina espacios extra bajo la imagen */
            width: 100%;
            max-width: 21cm; /* Ancho real de A4 */
        }

        img {
            width: 100%;
            height: auto;
            display: block;
        }

        /* Botón flotante de descarga */
        .download-btn {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background-color: #1D3557; /* Tu color azul corporativo */
            color: white;
            padding: 15px 25px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
            transition: transform 0.2s, background-color 0.2s;
            display: flex;
            align-items: center;
            gap: 10px;
            z-index: 1000;
        }

        .download-btn:hover {
            transform: translateY(-3px);
            background-color: #457B9D;
        }

        /* Ajuste para móviles */
        @media (max-width: 850px) {
            .page-container {
                width: 95%; /* En móvil ocupa casi todo el ancho */
            }
            .download-btn {
                padding: 12px 20px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <a href="cv.pdf" class="download-btn" download>
        <i class="fas fa-file-download"></i> Descargar PDF
    </a>

    <?php
    // Busca archivos que coincidan con el patrón cv-*.svg (ej: cv-1.svg, cv-2.svg)
    $files = glob("cv-*.svg");
    
    // Si no encuentra los numerados, busca el simple cv.svg
    if (empty($files)) {
        $files = glob("cv.svg");
    }

    // Muestra cada archivo encontrado
    foreach ($files as $file) {
        echo '<div class="page-container">';
        // Agregamos ?v=time() para evitar que el navegador guarde versiones viejas en caché
        echo '<img src="' . $file . '?v=' . time() . '" alt="Página del CV">';
        echo '</div>';
    }
    
    // Mensaje de seguridad por si no hay archivos
    if (empty($files)) {
        echo '<p style="color: #666;">No se encontraron los archivos SVG. Verifica que hayas subido cv-1.svg, etc.</p>';
    }
    ?>

</body>
</html>