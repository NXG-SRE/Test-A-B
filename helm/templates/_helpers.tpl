{{- define "frontend-testab.name" -}}
frontend-testab
{{- end -}}

{{- define "frontend-testab.fullname" -}}
frontend-testab
{{- end -}}

{{- define "frontend-testab.serviceAccountName" -}}
frontend-testab-svc-account
{{- end -}}

{{- define "frontend-testab.labels" -}}
name: {{ .Chart.Name }}
app: {{ .Chart.Name }}
version: "{{ .Chart.AppVersion }}"
{{- end -}}

{{- define "frontend-testab.selectorLabels" -}}
app: frontend-testab
{{- end -}}
