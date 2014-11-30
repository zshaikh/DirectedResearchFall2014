.class Ldolphin/webkit/ai;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/ae;


# direct methods
.method constructor <init>(Ldolphin/webkit/ae;)V
    .locals 0

    .prologue
    .line 2169
    iput-object p1, p0, Ldolphin/webkit/ai;->a:Ldolphin/webkit/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Ldolphin/webkit/ai;->a:Ldolphin/webkit/ae;

    invoke-static {v0}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/ae;)V

    .line 2173
    return-void
.end method
