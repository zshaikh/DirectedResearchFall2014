.class Ldolphin/webkit/ej;
.super Ljava/lang/Object;
.source "JWebCoreJavaBridge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/eh;


# direct methods
.method constructor <init>(Ldolphin/webkit/eh;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Ldolphin/webkit/ej;->a:Ldolphin/webkit/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 126
    const-string v0, "webkit-timers"

    const-string v1, "Wait Clicked."

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method
