.class final Lcom/flurry/android/monolithic/sdk/impl/wg;
.super Lcom/flurry/android/monolithic/sdk/impl/we;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 125
    const-class v0, Ljava/lang/Byte;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/we;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/wg;->c(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Byte;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/wg;->a(Ljava/lang/String;)I

    move-result v0

    .line 131
    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wg;->a:Ljava/lang/Class;

    const-string v1, "overflow, value can not be represented as 8-bit value"

    invoke-virtual {p2, v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 134
    :cond_1
    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
