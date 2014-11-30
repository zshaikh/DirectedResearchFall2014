.class Ldolphin/webkit/je;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:Ldolphin/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLdolphin/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3031
    iput-object p1, p0, Ldolphin/webkit/je;->a:Ljava/lang/String;

    .line 3032
    iput-boolean p2, p0, Ldolphin/webkit/je;->b:Z

    .line 3033
    iput-object p3, p0, Ldolphin/webkit/je;->c:Ldolphin/webkit/ValueCallback;

    .line 3034
    return-void
.end method
