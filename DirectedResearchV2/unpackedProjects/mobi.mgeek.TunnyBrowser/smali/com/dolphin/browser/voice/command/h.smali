.class public Lcom/dolphin/browser/voice/command/h;
.super Ljava/lang/Object;
.source "RecordResult.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:F


# direct methods
.method public constructor <init>(Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/h;->a:Ljava/util/List;

    .line 48
    iput p2, p0, Lcom/dolphin/browser/voice/command/h;->b:F

    .line 49
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/dolphin/browser/voice/command/h;->b:F

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/h;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    iget-object v4, p0, Lcom/dolphin/browser/voice/command/h;->a:Ljava/util/List;

    .line 56
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 67
    :goto_0
    return v0

    .line 60
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v1

    .line 61
    :goto_1
    if-ge v3, v5, :cond_3

    .line 62
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 64
    goto :goto_0

    .line 61
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
