.class Ldolphin/webkit/at;
.super Ljava/lang/Object;
.source "CallbackProxy.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/ae;

.field private b:Landroid/os/Message;


# direct methods
.method public constructor <init>(Ldolphin/webkit/ae;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Ldolphin/webkit/at;->a:Ldolphin/webkit/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Ldolphin/webkit/at;->b:Landroid/os/Message;

    .line 226
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Message;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ldolphin/webkit/at;->b:Landroid/os/Message;

    return-object v0
.end method
