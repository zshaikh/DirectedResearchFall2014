.class Ldolphin/webkit/fl;
.super Ljava/lang/Object;
.source "PNRReporter.java"

# interfaces
.implements Ldolphin/webkit/fg;


# instance fields
.field final synthetic a:Ldolphin/webkit/fh;


# direct methods
.method constructor <init>(Ldolphin/webkit/fh;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Ldolphin/webkit/fl;->a:Ldolphin/webkit/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Ldolphin/webkit/fl;->a:Ldolphin/webkit/fh;

    invoke-static {v0}, Ldolphin/webkit/fh;->c(Ldolphin/webkit/fh;)Landroid/content/Context;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$string;->pnr_toast_sent:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    const-wide/16 v0, 0xdac

    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/fl;->a(J)V

    .line 217
    return-void
.end method

.method a(J)V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ldolphin/webkit/fm;

    invoke-direct {v1, p0}, Ldolphin/webkit/fm;-><init>(Ldolphin/webkit/fl;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 226
    const-string v0, "PNRReporter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report file sending failed, located on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/fl;->a:Ldolphin/webkit/fh;

    iget-object v2, v2, Ldolphin/webkit/fh;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/fl;->a(J)V

    .line 229
    return-void
.end method
