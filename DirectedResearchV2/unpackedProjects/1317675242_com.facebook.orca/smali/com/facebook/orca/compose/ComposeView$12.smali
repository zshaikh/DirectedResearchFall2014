.class Lcom/facebook/orca/compose/ComposeView$12;
.super Ljava/lang/Object;
.source "ComposeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$12;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$12;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView;->k(Lcom/facebook/orca/compose/ComposeView;)Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 631
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)V

    .line 632
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 633
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$12;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView;->f(Lcom/facebook/orca/compose/ComposeView;)V

    .line 634
    return-void
.end method
