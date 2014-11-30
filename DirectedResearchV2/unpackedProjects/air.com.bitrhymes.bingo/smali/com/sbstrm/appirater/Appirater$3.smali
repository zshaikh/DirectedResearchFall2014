.class Lcom/sbstrm/appirater/Appirater$3;
.super Ljava/lang/Object;
.source "Appirater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sbstrm/appirater/Appirater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sbstrm/appirater/Appirater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sbstrm/appirater/Appirater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sbstrm/appirater/Appirater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dontshow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    iget-object v0, p0, Lcom/sbstrm/appirater/Appirater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    return-void
.end method
