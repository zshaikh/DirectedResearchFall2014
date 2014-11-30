.class Lmobi/mgeek/TunnyBrowser/hd;
.super Ljava/lang/Object;
.source "SpeedDialChooser.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/gy;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/gy;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hd;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 333
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 334
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hd;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/gy;->f(Lmobi/mgeek/TunnyBrowser/gy;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hd;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->b(Lmobi/mgeek/TunnyBrowser/gy;Ljava/lang/String;)V

    .line 339
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hd;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/gy;->e(Lmobi/mgeek/TunnyBrowser/gy;)V

    .line 340
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hd;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/gy;->d(Lmobi/mgeek/TunnyBrowser/gy;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method
