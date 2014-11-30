.class public Lcom/dolphin/browser/a/d;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/dolphin/browser/a/d;->a:I

    .line 24
    iput-object p2, p0, Lcom/dolphin/browser/a/d;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static a([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 45
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    .line 46
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    :cond_1
    return-object v0

    .line 48
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    array-length v2, p0

    .line 50
    :goto_0
    if-ge v1, v2, :cond_1

    .line 51
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 52
    add-int/lit8 v1, v1, 0x1

    aget-object v4, p0, v1

    .line 53
    new-instance v5, Lcom/dolphin/browser/a/d;

    invoke-direct {v5, v3, v4}, Lcom/dolphin/browser/a/d;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/dolphin/browser/a/d;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/a/d;->b:Ljava/lang/String;

    return-object v0
.end method
