.class Lmobi/mgeek/TunnyBrowser/hc;
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
    .line 293
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hc;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 308
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 309
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hc;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/gy;->b(Lmobi/mgeek/TunnyBrowser/gy;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hc;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->a(Lmobi/mgeek/TunnyBrowser/gy;Ljava/lang/String;)V

    .line 314
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hc;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/gy;->e(Lmobi/mgeek/TunnyBrowser/gy;)V

    .line 315
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hc;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/gy;->d(Lmobi/mgeek/TunnyBrowser/gy;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method
