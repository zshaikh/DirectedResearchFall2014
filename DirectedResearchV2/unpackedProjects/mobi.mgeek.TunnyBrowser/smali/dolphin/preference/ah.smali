.class Ldolphin/preference/ah;
.super Ljava/lang/Object;
.source "SetHomePageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/preference/ag;


# direct methods
.method constructor <init>(Ldolphin/preference/ag;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Ldolphin/preference/ah;->a:Ldolphin/preference/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ldolphin/preference/ah;->a:Ldolphin/preference/ag;

    invoke-static {v0}, Ldolphin/preference/ag;->a(Ldolphin/preference/ag;)Z

    .line 78
    return-void
.end method
