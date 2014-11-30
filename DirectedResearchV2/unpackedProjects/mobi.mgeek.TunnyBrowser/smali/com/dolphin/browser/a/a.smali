.class public abstract Lcom/dolphin/browser/a/a;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field private static e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/dolphin/browser/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/String;

.field protected c:Lorg/json/JSONObject;

.field protected d:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/dolphin/browser/a/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "both params should not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    iput-object p1, p0, Lcom/dolphin/browser/a/a;->a:Ljava/lang/Class;

    .line 35
    invoke-virtual {p2}, Lcom/dolphin/browser/a/d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/a/a;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "both params should not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/a/a;->a:Ljava/lang/Class;

    .line 43
    iput-object p2, p0, Lcom/dolphin/browser/a/a;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/util/HashMap;)Lcom/dolphin/browser/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dolphin/browser/a/d;",
            ">;)",
            "Lcom/dolphin/browser/a/a;"
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p0, :cond_4

    .line 67
    sget-object v0, Lcom/dolphin/browser/a/a;->e:Landroid/util/SparseArray;

    .line 68
    if-nez v0, :cond_5

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 70
    sput-object v0, Lcom/dolphin/browser/a/a;->e:Landroid/util/SparseArray;

    move-object v1, v0

    .line 72
    :goto_0
    const-string v0, "command"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 73
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/a/a;

    .line 74
    if-nez v0, :cond_3

    .line 75
    invoke-static {p0}, Lcom/dolphin/browser/a/f;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/a/f;->b(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/util/HashMap;)Lcom/dolphin/browser/a/f;

    move-result-object v0

    .line 80
    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    :cond_0
    :goto_2
    iput-object p0, v0, Lcom/dolphin/browser/a/a;->c:Lorg/json/JSONObject;

    .line 92
    :goto_3
    if-nez v0, :cond_1

    new-instance v0, Lcom/dolphin/browser/a/e;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/dolphin/browser/a/e;-><init>(Ljava/lang/Class;I)V

    :cond_1
    return-object v0

    .line 78
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/a/i;->b(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/util/HashMap;)Lcom/dolphin/browser/a/i;

    move-result-object v0

    goto :goto_1

    .line 82
    :cond_3
    instance-of v1, v0, Lcom/dolphin/browser/a/f;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 84
    check-cast v1, Lcom/dolphin/browser/a/f;

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/a/f;->a(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 90
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/a/a;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/dolphin/browser/a/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 97
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/dolphin/browser/a/a;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lcom/dolphin/browser/a/a;

    iget-object v0, p1, Lcom/dolphin/browser/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const-string v0, "method name: %s json: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/a/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dolphin/browser/a/a;->c:Lorg/json/JSONObject;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
