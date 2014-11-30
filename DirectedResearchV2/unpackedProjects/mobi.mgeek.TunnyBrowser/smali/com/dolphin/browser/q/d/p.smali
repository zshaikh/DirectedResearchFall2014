.class Lcom/dolphin/browser/q/d/p;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Lcom/dolphin/browser/q/d/d;


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/dolphin/browser/q/d/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/k;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/dolphin/browser/q/d/p;->b:Lcom/dolphin/browser/q/d/k;

    iput-object p2, p0, Lcom/dolphin/browser/q/d/p;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/q/d/p;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 227
    div-int/lit8 v3, v2, 0x64

    rem-int/lit8 v0, v2, 0x64

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v3, v0

    .line 228
    :goto_1
    if-ge v1, v3, :cond_2

    .line 229
    mul-int/lit8 v4, v1, 0x64

    .line 230
    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_1

    move v0, v2

    .line 232
    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/dolphin/browser/q/d/p;->b:Lcom/dolphin/browser/q/d/k;

    iget-object v6, p0, Lcom/dolphin/browser/q/d/p;->a:Lorg/json/JSONArray;

    invoke-static {v5, v6, v4, v0}, Lcom/dolphin/browser/q/d/k;->a(Lcom/dolphin/browser/q/d/k;Lorg/json/JSONArray;II)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v4, p0, Lcom/dolphin/browser/q/d/p;->b:Lcom/dolphin/browser/q/d/k;

    invoke-static {v4, v0}, Lcom/dolphin/browser/q/d/k;->a(Lcom/dolphin/browser/q/d/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v4, p0, Lcom/dolphin/browser/q/d/p;->b:Lcom/dolphin/browser/q/d/k;

    invoke-static {v4, v0}, Lcom/dolphin/browser/q/d/k;->b(Lcom/dolphin/browser/q/d/k;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    add-int/lit8 v0, v4, 0x64

    goto :goto_2

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 240
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
