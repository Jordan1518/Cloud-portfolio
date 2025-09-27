# Notas - Seguridad (Módulo 6)

## Modelo de responsabilidad compartida
- AWS es responsable de la **seguridad de la nube** (infraestructura física, red global, hardware).
- El cliente es responsable **en** la nube: configuración de recursos, control de acceso, datos, aplicaciones y cifrado.

## IAM (Identity and Access Management)
- IAM permite crear **usuarios**, **grupos**, **roles** y **políticas** que controlan quién puede hacer qué.
- Buenas prácticas:
  - **No usar la cuenta root** para tareas diarias.
  - Crear un **usuario IAM** con permisos mínimos necesarios (principio de menor privilegio).
  - Activar **MFA** (autenticación multifactor) para cuentas importantes.
  - Rotar / revocar claves de acceso cuando no se usen.
- Componentes:
  - Usuarios: identidades que inician sesión.
  - Grupos: colecciones de usuarios para asignar políticas.
  - Roles: permisos temporales que un servicio o usuario puede asumir.
  - Políticas: JSON que describen permisos (Allow/Deny).

## AWS Organizations
- Servicio para gestionar cuentas múltiples, aplicar políticas de control a nivel organización y consolidar facturación.

## Conformidad y ataques
- AWS ofrece servicios y certificaciones para cumplimiento (ISO, SOC, etc.).
- Ataques comunes: DDoS — soluciones: AWS Shield, WAF, buenas arquitecturas de red.

## Resumen práctico
- Seguridad = configuración correcta + monitoreo + control de acceso. IAM es la base para proteger recursos.

## Plan práctico: crear usuario IAM seguro (pasos)
1. Iniciar sesión con cuenta root solo para crear usuarios iniciales y configurar billing.
2. Console → IAM → Users → Add user:
   - Username: `tu_nombre_practica` (ej: jordan-iam)
   - Access type: Console access (y Programmatic access si usarás CLI)
3. Crear grupo `cloud-learning` y asignar políticas mínimas:
   - Para prácticas S3/CloudFront: `AmazonS3FullAccess` + `CloudFrontFullAccess` (temporal).
   - Para producción: aplicar políticas de menor privilegio específicas.
4. Guardar access key/secret key en lugar seguro (no compartir).
5. Activar MFA en el usuario y en el root.
6. Probar login con el usuario IAM y verificar que no puedes acceder a facturación (buena señal).
7. Crear un procedimiento para **rotar** las claves cada cierto tiempo.
