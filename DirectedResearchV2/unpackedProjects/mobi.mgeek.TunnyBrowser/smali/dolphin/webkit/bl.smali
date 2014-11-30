.class Ldolphin/webkit/bl;
.super Landroid/os/AsyncTask;
.source "CookieManagerClassic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldolphin/webkit/CookieManagerClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/CookieManagerClassic;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Ldolphin/webkit/bl;->a:Ldolphin/webkit/CookieManagerClassic;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Ldolphin/webkit/CookieManagerClassic;->c()V

    .line 457
    iget-object v0, p0, Ldolphin/webkit/bl;->a:Ldolphin/webkit/CookieManagerClassic;

    invoke-static {v0}, Ldolphin/webkit/CookieManagerClassic;->a(Ldolphin/webkit/CookieManagerClassic;)V

    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 453
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldolphin/webkit/bl;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
