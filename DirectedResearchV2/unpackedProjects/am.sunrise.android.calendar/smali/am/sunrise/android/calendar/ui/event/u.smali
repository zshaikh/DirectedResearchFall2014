.class Lam/sunrise/android/calendar/ui/event/u;
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
    .line 152
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/u;->a:Lam/sunrise/android/calendar/ui/event/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 155
    check-cast p1, Landroid/widget/CheckedTextView;

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 157
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    return-void
.end method
