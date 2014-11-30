.class Lam/sunrise/android/calendar/ui/event/x;
.super Ljava/lang/Object;
.source "RecurringRuleEditorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/s;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/s;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/x;->a:Lam/sunrise/android/calendar/ui/event/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/x;->a:Lam/sunrise/android/calendar/ui/event/s;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/s;->c(Lam/sunrise/android/calendar/ui/event/s;)V

    .line 261
    return-void
.end method
