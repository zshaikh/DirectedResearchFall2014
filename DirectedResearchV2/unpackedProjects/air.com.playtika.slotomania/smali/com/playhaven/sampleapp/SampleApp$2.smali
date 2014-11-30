.class Lcom/playhaven/sampleapp/SampleApp$2;
.super Ljava/lang/Object;
.source "SampleApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/sampleapp/SampleApp;->addPreferencesButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/sampleapp/SampleApp;


# direct methods
.method constructor <init>(Lcom/playhaven/sampleapp/SampleApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/sampleapp/SampleApp$2;->this$0:Lcom/playhaven/sampleapp/SampleApp;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/playhaven/sampleapp/SampleApp$2;->this$0:Lcom/playhaven/sampleapp/SampleApp;

    const-class v2, Lcom/playhaven/sampleapp/SamplePreferences;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "showPrefsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/playhaven/sampleapp/SampleApp$2;->this$0:Lcom/playhaven/sampleapp/SampleApp;

    invoke-virtual {v1, v0}, Lcom/playhaven/sampleapp/SampleApp;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method
