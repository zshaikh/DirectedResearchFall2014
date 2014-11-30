.class Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$3;
.super Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;
.source "ThreadViewDetailsFragmentTab.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$3;->a:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threadview/ThreadNamePicker$Result;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/facebook/orca/threadview/ThreadNamePicker$Result;->CHANGE:Lcom/facebook/orca/threadview/ThreadNamePicker$Result;

    if-ne p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$3;->a:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    invoke-static {v0, p2}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$3;->a:Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->c(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V

    .line 121
    :cond_0
    return-void
.end method
