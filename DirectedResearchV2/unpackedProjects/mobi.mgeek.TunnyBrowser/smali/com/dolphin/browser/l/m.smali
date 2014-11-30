.class final Lcom/dolphin/browser/l/m;
.super Ljava/lang/Object;
.source "PasswordSecureHelper.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/dolphin/browser/l/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/l/l;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/l/m;->e:Lcom/dolphin/browser/l/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/l/m;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/dolphin/browser/l/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/l/m;->b:Ljava/lang/String;

    .line 49
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getAndroidIdHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/l/m;->a:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dolphin/browser/l/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/l/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/l/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/l/m;->d:Ljava/lang/String;

    .line 62
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/l/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/l/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/l/m;->c:Ljava/lang/String;

    .line 58
    return-void
.end method
