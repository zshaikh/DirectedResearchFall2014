.class Lcom/dolphin/browser/gesture/g;
.super Lcom/dolphin/browser/gesture/h;
.source "GestureLibraries.java"


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p3}, Lcom/dolphin/browser/gesture/h;-><init>(Z)V

    .line 145
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/g;->b:Ljava/lang/ref/WeakReference;

    .line 146
    iput p2, p0, Lcom/dolphin/browser/gesture/g;->c:I

    .line 147
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 159
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/gesture/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/dolphin/browser/gesture/g;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 164
    :try_start_0
    iget-object v4, p0, Lcom/dolphin/browser/gesture/g;->a:Lcom/dolphin/browser/gesture/s;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/dolphin/browser/gesture/s;->a(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    const-string v3, "Gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load the gesture library from raw resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v5, p0, Lcom/dolphin/browser/gesture/g;->c:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v2

    goto :goto_0
.end method
