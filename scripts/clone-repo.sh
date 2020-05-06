git clone --config "credential.helper=!aws codecommit \
    --profile $1 \
    credential-helper \$@" \
    --config 'credential.UseHttpPath=true' \
    --config 'alias.mfa=!~/Scripts/get-mfa-token.sh \
    $1 CHANGETHIS ' \
    $2
