.class public final Lcom/google/ads/e/af;
.super Lcom/google/ads/e/ae;
.source "ProGuard"


# instance fields
.field final synthetic d:Lcom/google/ads/e/ac;


# direct methods
.method public constructor <init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/ads/e/af;->d:Lcom/google/ads/e/ac;

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;Lcom/google/ads/e/ad;)V

    .line 148
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/ads/e/af;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/ads/e/ae;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (!)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
