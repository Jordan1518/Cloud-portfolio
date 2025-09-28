# Notas - Monitoreo y Análisis (Módulo 7)

## Amazon CloudWatch (resumen)
- CloudWatch recoge métricas (CPU, red, disco), logs (CloudWatch Logs) y permite crear alarmas.
- Usos: detectar alta utilización, obtener métricas de recursos, activar auto-scaling o notificaciones.
- Componentes clave: Metrics, Logs, Alarms, Dashboards, Events (EventBridge).
- Ejemplo de alarma útil: CPU > 70% por 5 minutos -> enviar notificación (SNS) y/o escalar.

## AWS CloudTrail (resumen)
- CloudTrail registra llamadas a la API (quién hizo qué, cuándo). Es útil para auditoría y seguridad.
- Guarda los archivos de log en S3 y puede integrarse con CloudWatch Logs para alertas sobre eventos sensibles (ej: creación de usuarios IAM).

## AWS Trusted Advisor (resumen)
- Trusted Advisor da recomendaciones sobre seguridad, rendimiento, tolerancia a fallos y optimización de costos.
- Ofrece checks como: recursos sin usar, configuraciones de seguridad, límites de servicio.

## Ideas prácticas
- Siempre crear alarma de facturación (`EstimatedCharges`) en CloudWatch -> notificación vía SNS a tu correo.
- Activar CloudTrail para auditar cambios en IAM y accesos a S3.
