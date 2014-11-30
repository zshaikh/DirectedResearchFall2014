.class Lcom/facebook/orca/common/ui/widgets/MuteWarningView$1;
.super Ljava/lang/Object;
.source "MuteWarningView.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$1;->a:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$1;->a:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    invoke-static {v0, p2}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;Lcom/facebook/orca/prefs/PrefKey;)V

    .line 86
    return-void
.end method
