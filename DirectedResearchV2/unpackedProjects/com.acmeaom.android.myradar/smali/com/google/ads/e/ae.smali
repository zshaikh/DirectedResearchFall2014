.class public abstract Lcom/google/ads/e/ae;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected a:Ljava/lang/Object;

.field protected final b:Ljava/lang/String;

.field final synthetic c:Lcom/google/ads/e/ac;


# direct methods
.method private constructor <init>(Lcom/google/ads/e/ac;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/e/ac;Ljava/lang/String;Lcom/google/ads/e/ad;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/ads/e/ae;->c:Lcom/google/ads/e/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/google/ads/e/ae;->b:Ljava/lang/String;

    .line 91
    invoke-static {p1, p0}, Lcom/google/ads/e/ac;->a(Lcom/google/ads/e/ac;Lcom/google/ads/e/ae;)V

    .line 92
    iput-object p3, p0, Lcom/google/ads/e/ae;->a:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;Lcom/google/ads/e/ad;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/ads/e/ae;->c:Lcom/google/ads/e/ac;

    invoke-virtual {v1}, Lcom/google/ads/e/ac;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/e/ae;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/e/ae;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
