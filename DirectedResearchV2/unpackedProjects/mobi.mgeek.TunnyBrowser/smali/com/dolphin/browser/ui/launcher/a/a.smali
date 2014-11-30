.class public Lcom/dolphin/browser/ui/launcher/a/a;
.super Ljava/lang/Object;
.source "HomeScreen.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/ui/launcher/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/ui/launcher/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/a;->b:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/ui/launcher/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/a;->b:Ljava/util/List;

    .line 28
    iput p1, p0, Lcom/dolphin/browser/ui/launcher/a/a;->a:I

    .line 29
    iput-object p2, p0, Lcom/dolphin/browser/ui/launcher/a/a;->b:Ljava/util/List;

    .line 30
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/ui/launcher/a/a;
    .locals 6

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p0, :cond_2

    .line 46
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a/a;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/launcher/a/a;-><init>()V

    .line 47
    const-string v1, "sid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/ui/launcher/a/a;->a:I

    .line 49
    const-string v1, "its"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 51
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 52
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 53
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 54
    invoke-static {v4}, Lcom/dolphin/browser/ui/launcher/a/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/ui/launcher/a/b;

    move-result-object v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    iget-object v5, v0, Lcom/dolphin/browser/ui/launcher/a/a;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, v0, Lcom/dolphin/browser/ui/launcher/a/a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 63
    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/ui/launcher/a/a;)I
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/dolphin/browser/ui/launcher/a/a;->a:I

    iget v1, p1, Lcom/dolphin/browser/ui/launcher/a/a;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/ui/launcher/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/dolphin/browser/ui/launcher/a/a;->a:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/dolphin/browser/ui/launcher/a/a;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/launcher/a/a;->a(Lcom/dolphin/browser/ui/launcher/a/a;)I

    move-result v0

    return v0
.end method
