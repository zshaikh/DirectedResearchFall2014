.class public Lcom/buffalostudios/aneutils/globalerror/GlobalErrorActivity;
.super Landroid/app/Activity;
.source "GlobalErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buffalostudios/aneutils/globalerror/GlobalErrorActivity$Key;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "crashReport"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buffalostudios/aneutils/globalerror/GlobalErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.buffalostudios.aneutils.CRASH_REPORT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/buffalostudios/aneutils/globalerror/GlobalErrorActivity;->setContentView(Landroid/view/View;)V

    .line 32
    const-string v2, ""

    .line 34
    .local v2, "crashReport":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buffalostudios/aneutils/globalerror/GlobalErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 37
    const-string v3, "com.buffalostudios.aneutils.CRASH_REPORT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    const-string v2, ""

    .line 43
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {p0}, Lcom/buffalostudios/aneutils/globalerror/GlobalErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 43
    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "There is something wrong"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Crash report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 48
    const-string v4, "OK"

    new-instance v5, Lcom/buffalostudios/aneutils/globalerror/GlobalErrorActivity$1;

    invoke-direct {v5, p0}, Lcom/buffalostudios/aneutils/globalerror/GlobalErrorActivity$1;-><init>(Lcom/buffalostudios/aneutils/globalerror/GlobalErrorActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 54
    return-void
.end method
