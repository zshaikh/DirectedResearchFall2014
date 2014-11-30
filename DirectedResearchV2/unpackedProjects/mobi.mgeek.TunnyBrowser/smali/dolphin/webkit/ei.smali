.class Ldolphin/webkit/ei;
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
    .line 130
    iput-object p1, p0, Ldolphin/webkit/ei;->a:Ldolphin/webkit/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 134
    return-void
.end method
