.class Lcom/facebook/orca/contacts/picker/ContactPickerView$2;
.super Ljava/lang/Object;
.source "ContactPickerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/ContactPickerView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$2;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$2;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-static {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    .line 147
    return-void
.end method
