.class Ldolphin/net/http/f;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionManager.java"


# instance fields
.field final synthetic a:Ldolphin/net/http/e;


# direct methods
.method constructor <init>(Ldolphin/net/http/e;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Ldolphin/net/http/f;->a:Ldolphin/net/http/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ldolphin/net/http/f;->a:Ldolphin/net/http/e;

    invoke-static {v0}, Ldolphin/net/http/e;->a(Ldolphin/net/http/e;)V

    .line 125
    return-void
.end method
