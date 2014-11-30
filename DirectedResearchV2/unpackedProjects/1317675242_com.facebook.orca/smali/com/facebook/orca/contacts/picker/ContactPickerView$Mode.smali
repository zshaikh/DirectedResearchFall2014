.class public final enum Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;
.super Ljava/lang/Enum;
.source "ContactPickerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

.field public static final enum ADD_MEMBERS:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

.field public static final enum CREATE_THREAD:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    const-string v1, "CREATE_THREAD"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->CREATE_THREAD:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    .line 58
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    const-string v1, "ADD_MEMBERS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->ADD_MEMBERS:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->CREATE_THREAD:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->ADD_MEMBERS:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->$VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->$VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    invoke-virtual {v0}, [Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    return-object v0
.end method
