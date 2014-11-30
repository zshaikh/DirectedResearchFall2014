.class Ldolphin/webkit/js;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    iput-object p1, p0, Ldolphin/webkit/js;->a:Ljava/lang/String;

    .line 1207
    iput v0, p0, Ldolphin/webkit/js;->b:I

    .line 1208
    iput v0, p0, Ldolphin/webkit/js;->c:I

    .line 1209
    return-void
.end method
