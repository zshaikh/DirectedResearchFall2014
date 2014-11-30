.class Lcom/sbstrm/appirater/Appirater$2;
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
    iput-object p1, p0, Lcom/sbstrm/appirater/Appirater$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sbstrm/appirater/Appirater$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sbstrm/appirater/Appirater$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "date_reminder_pressed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object v0, p0, Lcom/sbstrm/appirater/Appirater$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 128
    return-void
.end method
