.class Lcom/dolphin/browser/theme/d/g;
.super Lcom/dolphin/browser/util/f;
.source "ThemeInstallerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/dolphin/browser/theme/d/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/d/d;Ljava/lang/String;Ljava/io/InputStream;ZZ)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/dolphin/browser/theme/d/g;->e:Lcom/dolphin/browser/theme/d/d;

    iput-object p2, p0, Lcom/dolphin/browser/theme/d/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/theme/d/g;->b:Ljava/io/InputStream;

    iput-boolean p4, p0, Lcom/dolphin/browser/theme/d/g;->c:Z

    iput-boolean p5, p0, Lcom/dolphin/browser/theme/d/g;->d:Z

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/d/g;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 116
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 117
    const-string v1, "themes"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dolphin/browser/theme/d/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_temp.dtp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/g;->b:Ljava/io/InputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/IOUtilities;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/g;->e:Lcom/dolphin/browser/theme/d/d;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-boolean v3, p0, Lcom/dolphin/browser/theme/d/g;->c:Z

    iget-boolean v4, p0, Lcom/dolphin/browser/theme/d/g;->d:Z

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/theme/d/d;->a(Lcom/dolphin/browser/theme/d/d;Landroid/net/Uri;IZZZZ)V

    .line 131
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/g;->e:Lcom/dolphin/browser/theme/d/d;

    invoke-static {v0}, Lcom/dolphin/browser/theme/d/d;->b(Lcom/dolphin/browser/theme/d/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 123
    sget-object v3, Lcom/dolphin/browser/theme/d/j;->a:Lcom/dolphin/browser/theme/d/j;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    iget-object v3, p0, Lcom/dolphin/browser/theme/d/g;->e:Lcom/dolphin/browser/theme/d/d;

    invoke-static {v3}, Lcom/dolphin/browser/theme/d/d;->b(Lcom/dolphin/browser/theme/d/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/g;->e:Lcom/dolphin/browser/theme/d/d;

    invoke-static {v0}, Lcom/dolphin/browser/theme/d/d;->b(Lcom/dolphin/browser/theme/d/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
