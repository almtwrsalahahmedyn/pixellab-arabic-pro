.class public Larm/pkfpf;
.super Landroid/content/ContentProvider;


# instance fields
.field private Signer:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-class v0, Larm/pkfpf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Larm/pkfpf;->TAG:Ljava/lang/String;

    const-string v0, "AQAAA4YwggOCMIICaqADAgECAgQmmvJPMA0GCSqGSIb3DQEBDQUAMFsxCzAJBgNVBAYTAnllMQ0wCwYDVQQIEwRzYW5hMQ4wDAYDVQQHEwVzYW5hYTEPMA0GA1UECxMGVEFXRklRMQswCQYDVQQKEwJURzEPMA0GA1UEAxMGVEFXRklRMB4XDTI0MDUxNDE3MDQwOVoXDTQ5MDUwODE3MDQwOVowWzELMAkGA1UEBhMCeWUxDTALBgNVBAgTBHNhbmExDjAMBgNVBAcTBXNhbmFhMQ8wDQYDVQQLEwZUQVdGSVExCzAJBgNVBAoTAlRHMQ8wDQYDVQQDEwZUQVdGSVEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDQhpmJGS3eNNXKZOFlabVuld6aqTQU4fJEYdTtpBVqq58IeqM5tlfVimLLQzr8zdc4bjkRJ7qGjtzZkzDVwbxmUYOx1fKF84e2uKYBFQs0jsEFONmvEpOxE7fV0rzqezBoRBdS1qPDA8BTjNX3/msrERihbpv7+7DmDdB6lY6zSM4ku0d8bRwh2K0sYuKoe8bjWeSPOBSqOtq59LndjQPuGgfVGR6j2OiA49y23Ah3xqbIfz60xZJrUvJi3iZhPSN07/ws6pudVMFsvTIP/Nru2/6YDmLRvdYlHaR+hKZeF/egPONql9yaG/P7TAzA14ucMGA6ap0f2Mv32wPQngUFAgMBAAGjTjBMMB0GA1UdDgQWBBRj/dhQ9L4Wzn4aNJIDm1f7bKb3+zArBgNVHRAEJDAigA8yMDI0MDUxNDE3MDQwOVqBDzIwNDkwNTA4MTcwNDA5WjANBgkqhkiG9w0BAQ0FAAOCAQEAhwwOP/mFvj12IGM4kYswMQ+uVgAtntBUrxqMjlkwgLqUyo8bEt2wpy+YLUS3JnnbxaWmrZd+yduaXV+RBWsqfnLEl2NVx3AcED45MLwRi7x3ICIxhW2t9YHYx2Ijtd2oYNZnALZ7IxsXRysiQ7URKSOG9Ca/LEA6XC6izCa0U5+9kuAQ+8mkaBOcLJno89AW06PUfW55GbWxR1KHCvXAd50s9KedC5Av5jCxMWlrm2Sgbr4Q8RrRBJJ5RQ8iix+HnI4vGP+KBzVe90oeeRXGrSGfIU3cNzKc9XEfcuPrq3vG/9hQ4yEdgQ2J8ocM6g1xdSMnOhT8g7ASXwwOMrj/kg=="

    iput-object v0, p0, Larm/pkfpf;->Signer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
