.class Lcom/acmeaom/android/a/f/i;
.super Ljava/util/ArrayList;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/f/h;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/f/h;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/acmeaom/android/a/f/i;->a:Lcom/acmeaom/android/a/f/h;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const-string v0, "mesonet.agron.iastate.edu/cache/tile.py/1.0.0/nexrad-n0r-900913^i"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/f/i;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v0, "flightwise.com/f/ww.ashx"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/f/i;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v0, "mesonet.agron.iastate.edu/cache/tile.py/1.0.0/nexrad-n0r-900913^i"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/f/i;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v0, "a14fbfd01b5ee9b"

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/f/i;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method
