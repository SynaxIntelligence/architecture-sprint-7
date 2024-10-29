#!/bin/bash

# Parameters
USER_NAME="${1}"
NAMESPACE="${2:-default}"
KUBECONFIG_PATH="${3:-$HOME/.kube/config}"

# Paths
CERT_DIR="./certs"
USER_KEY="$CERT_DIR/${USER_NAME}.key"
USER_CRT="$CERT_DIR/${USER_NAME}.crt"

kubectl config set-credentials "$USER_NAME" \
  --client-certificate="$USER_CRT" \
  --client-key="$USER_KEY" \
  --kubeconfig="$KUBECONFIG_PATH"

kubectl config set-credentials "admin" \
  --client-certificate="C:\Users\vvick\.minikube\profiles\minikube\client.crt" \
  --client-key="C:\Users\vvick\.minikube\profiles\minikube\client.key" \
  --kubeconfig="$HOME/.kube/config"

---

# Пользователи кластера
./add_user.sh cluster_reader_1 default ~/.kube/config
./add_user.sh cluster_maintainer_1 default ~/.kube/config

# Пользователи функциональных команд

# Функциональная команда Сервисы для клиентов
# Инженер по эксплуатации
./add_user.sh ops_1 client ~/.kube/config
# DevOps инженер
./add_user.sh devops_1 client ~/.kube/config
# Разработчик
./add_user.sh developer_1 client ~/.kube/config

# Функциональная команда Сервисы ЖКУ (для собственников)
./add_user.sh ops_1 owner ~/.kube/config
./add_user.sh devops_1 owner ~/.kube/config
./add_user.sh developer_1 owner ~/.kube/config
