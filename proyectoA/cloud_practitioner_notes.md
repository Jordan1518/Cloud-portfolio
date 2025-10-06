# Notas AWS Cloud Practitioner (Módulos 1-2)

## Conceptos Básicos de AWS
- AWS es la plataforma de nube más usada a nivel mundial.
- Ofrece servicios bajo demanda: computación, almacenamiento, redes y seguridad.
- Modelo de pago: **pay-as-you-go** (solo pagas lo que usas).

## Beneficios de la Nube
- Escalabilidad: ajustar recursos cuando aumenta/disminuye la demanda.
- Alta disponibilidad: AWS tiene centros de datos globales.
- Seguridad: infraestructura con estándares de nivel empresarial.

## Servicios Iniciales
- **EC2**: servidores virtuales en la nube.
- **S3**: almacenamiento de objetos (archivos, sitios estáticos).
- **RDS**: base de datos relacional administrada.
- **IAM**: control de usuarios y permisos.

## Modelo de Precios
- Pago por uso, sin inversión inicial.
- Posibilidad de reservar instancias para ahorrar costos.


# Notas - Cloud Practitioner (Hoy)

## Módulo 1 - Introducción (resumen)
- La nube permite consumir recursos (compute, storage, network) por demanda.
- Modelos: IaaS (máquinas), PaaS (plataformas), SaaS (apps).
- Beneficios clave: escalabilidad, alta disponibilidad, pago por uso.

## Módulo 2 - Computación en la nube (EC2 & escalado)
- **EC2**: servicio de máquinas virtuales. Se elige tipo/CPU/RAM/OS.
- **Tipos de instancias**: existen familias (ligeras vs compute-optimised vs memory-optimised). Elegir según la necesidad.
- **Precios EC2**: on-demand (pago por hora), reserved (compromiso a cambio de descuento), spot (más barato, puede interrumpirse).
- **Auto Scaling**: aumenta/reduce instancias según demanda (útil para tráfico variable).
- **Elastic Load Balancer (ELB)**: reparte tráfico entre instancias para disponibilidad y estabilidad.

### EC2 - Resumen (tipos y precios)
- EC2: servicio de máquinas virtuales (instancias) en AWS.
- Familias: ejemplos:
  - t (burstable, general ligero) → ideal para pruebas y cargas pequeñas.
  - m (general purpose) → equilibrio CPU/memoria.
  - r (memory-optimized) → para bases de datos en memoria.
- Modelos de precio:
  - On-demand: pago por uso, flexible.
  - Reserved: compromiso a 1/3 años, más barato si sabes uso.
  - Spot: muy barato, pero la instancia puede interrumpirse.

### Auto Scaling y ELB
- Auto Scaling: ajusta automáticamente el número de instancias según métricas (CPU, tráfico). Ej: subir instancias en picos y bajar en horas bajas.
- ELB (Load Balancer): reparte tráfico entre instancias; mejora disponibilidad y tolerancia a fallos.
- Ejemplo de uso: sitio web con ELB + Auto Scaling para manejar picos de tráfico sin intervención manual.


## Módulo 5 - Almacenamiento (resumen)

### Amazon S3 (Simple Storage Service)
- S3 es un servicio de almacenamiento de objetos para archivos (HTML, imágenes, backups).
- Casos de uso: hosting de sitios estáticos, backup, distribución de contenido, almacenamiento de logs.
- Características: alta durabilidad (99.999999999% para objetos), escalabilidad automática, acceso por HTTP(S).
- Costos: cobro por almacenamiento (GB/mes), requests (PUT/GET) y transferencia de datos saliente.

### EBS (Elastic Block Store)
- Volúmenes de bloques usados por instancias EC2 (discos virtuales). Persisten mientras no los borres.
- Útil para sistemas operativos y bases de datos en instancias EC2.

### EFS (Elastic File System)
- Sistema de archivos compartido (NFS) para múltiples instancias EC2 simultáneas.
- Ideal para aplicaciones que requieren acceso concurrente a archivos.

### Bases de datos administradas (RDS / DynamoDB)
- RDS: bases de datos relacionales administradas (MySQL, Postgres, SQL Server). Menos administración.
- DynamoDB: base de datos NoSQL totalmente gestionada, baja latencia, escalado automático.

(Notas: S3 = objetos / EBS = bloques / EFS = sistema de archivos)

## Nota rápida sobre monitoreo
CloudWatch recoge métricas/alarms/logs; CloudTrail registra llamadas a la API (auditoría). Usar ambos juntos para detectar y responder incidentes.

## Módulo 8 - Precios y Soporte (resumen)

### Nivel gratuito (Free Tier)
- AWS ofrece un Free Tier con límites para servicios comunes (S3, EC2 micro, etc.) durante 12 meses y algunos recursos "Always Free".
- Importante: respetar límites para evitar cargos.

### Conceptos de precios
- Modelo principal: **pay-as-you-go** (pagar por lo consumido).
- Modalidades de precio (ej.: EC2): on-demand, reserved, spot.
- Costos = almacenamiento + requests + transferencia de datos + servicios gestionados.
- Herramientas: Cost Explorer para análisis histórico; AWS Budgets para alertas y control.

### Panel de facturación
- Billing Dashboard: resumen de gastos, facturas y métodos de pago.
- Opciones: consolidar facturación entre cuentas (pagar una cuenta principal).

### AWS Budgets
- Permite crear presupuestos (mensual/trimestral/anual) y enviar alertas por email/SNS al superar porcentajes (50%, 80%, 100%).
- Útil para gestión y control proactivo del gasto.

### Buenas prácticas rápidas
- Crear alarma de facturación (CloudWatch EstimatedCharges) con umbral bajo (ej. 5 USD) y notificación por email.
- Crear un Budget mensual con notificaciones al 50/80/100% y revisar Cost Explorer semanalmente.
- Apagar o eliminar recursos de prueba al terminar (EC2, EBS, CloudFront, snapshots).

## Módulo 9 - Migración e innovación

- **AWS Cloud Adoption Framework (CAF):** guía para alinear estrategia de negocio, personas, procesos y tecnología en una migración.
- **Estrategias de migración:** Rehost (lift-and-shift), Replatform, Refactor, Repurchase, Retire, Retain. Elegir estrategia según riesgo/coste/tiempo.
- **AWS Snow family:** dispositivos para mover grandes volúmenes de datos offline (Snowball, Snowcone, Snowmobile).
- **Migración:** planificar pruebas, entorno de staging, validación de datos y rollback plan.
- **Innovación:** la nube facilita experimentación (provisionar recursos rápidos, POCs), acelerar time-to-market y reducir costo de entrada.
- **Resumen práctico:** para migrar, priorizar aplicaciones por criticidad y coste, empezar con un pequeño POC usando la estrategia que minimice riesgo.

## Módulo 10 - Well-Architected & beneficios

- **AWS Well-Architected Framework:** cinco pilares: Operational Excellence, Security, Reliability, Performance Efficiency, Cost Optimization.
- **Beneficios de la nube:** elasticidad, rapidez para innovar, modelos de coste flexibles, alcance global.
- **Prácticas clave:** diseñar para fallas (multi-AZ), automatizar (IaC), monitorizar (CloudWatch), optimizar costes (right-sizing, reserved vs spot).
- **Resumen práctico:** usar el Well-Architected Review para validar diseño antes del despliegue en producción; aplicar recomendaciones de Trusted Advisor.

## Módulo 11 - Conceptos para AWS Certified Cloud Practitioner

- **Áreas clave del examen:** 
  - *Cloud Concepts* (beneficios de la nube, modelos IaaS/PaaS/SaaS, regiones y zonas de disponibilidad).
  - *Security & Compliance* (modelo de responsabilidad compartida, IAM, cifrado básico, buenas prácticas).
  - *Technology* (servicios principales: EC2, S3, RDS, VPC, Lambda, CloudFront; cómo se integran).
  - *Billing & Pricing* (free tier, pay-as-you-go, reserved instances, Cost Explorer, Budgets, CloudWatch EstimatedCharges).

- **Estrategias para el examen:**
  - Leer preguntas buscando el *objetivo* (qué se pide exactamente).
  - Eliminar respuestas obviamente incorrectas y comparar las restantes.
  - Priorizar entender conceptos y relaciones entre servicios (no memorizar solo números).

- **Consejos prácticos:**
  - Repasa el Well-Architected y casos de uso comunes (backup, alta disponibilidad, recuperación).
  - Practica ejercicios de facturación (ej.: cuándo conviene reserved vs on-demand).
  - Hacer la evaluación final del curso para consolidar conocimientos.

- **Próximo paso recomendado:** resolver 3–5 simulacros de examen Cloud Practitioner en la Skill Builder o recursos gratuitos antes de reservar examen.


