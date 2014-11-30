.class Ldolphin/webkit/ah;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/JsResult;

.field final synthetic b:Ldolphin/webkit/ae;


# direct methods
.method constructor <init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Ldolphin/webkit/ah;->b:Ldolphin/webkit/ae;

    iput-object p2, p0, Ldolphin/webkit/ah;->a:Ldolphin/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Ldolphin/webkit/ah;->a:Ldolphin/webkit/JsResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsResult;->confirm()V

    .line 842
    return-void
.end method
