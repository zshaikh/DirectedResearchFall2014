.class Lcom/dolphin/browser/share/a/i;
.super Lcom/dolphin/browser/util/f;
.source "EvernotePageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/dolphin/browser/share/a/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/h;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/share/a/i;->c:Lcom/dolphin/browser/share/a/h;

    iput-object p2, p0, Lcom/dolphin/browser/share/a/i;->a:Landroid/content/Context;

    iput p3, p0, Lcom/dolphin/browser/share/a/i;->b:I

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/a/i;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/i;->c:Lcom/dolphin/browser/share/a/h;

    iget-object v1, p0, Lcom/dolphin/browser/share/a/i;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/a/h;->a(Lcom/dolphin/browser/share/a/h;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 37
    iget v0, p0, Lcom/dolphin/browser/share/a/i;->b:I

    packed-switch v0, :pswitch_data_0

    .line 47
    const-string v0, "\nwindow.clipper.clipFullPage(true, null);"

    .line 51
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_1
    return-object v0

    .line 39
    :pswitch_0
    const-string v0, "\nwindow.clipper.clipArticle(true, null);"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "\nwindow.clipper.clipSelection(true, null);"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 55
    const/4 v0, 0x0

    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/a/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/share/a/i;->c:Lcom/dolphin/browser/share/a/h;

    invoke-static {v0, p1}, Lcom/dolphin/browser/share/a/h;->a(Lcom/dolphin/browser/share/a/h;Ljava/lang/String;)Z

    .line 61
    return-void
.end method
