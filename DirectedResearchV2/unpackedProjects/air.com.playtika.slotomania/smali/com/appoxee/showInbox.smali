.class public Lcom/appoxee/showInbox;
.super Ljava/lang/Object;
.source "showInbox.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 13
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "inside showBrowser.call"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    sput-object p1, Lcom/appoxee/Appoxee;->freContext:Lcom/adobe/fre/FREContext;

    .line 16
    const-string v2, "raw.appoxeesound"

    invoke-virtual {p1, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 18
    .local v0, "id":I
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/appoxee/activities/Inbox;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    const/4 v2, 0x0

    return-object v2
.end method
