.class public Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
.super Ljava/lang/Object;
.source "AddCalendarEntryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calendar"
.end annotation


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->name:Ljava/lang/String;

    .line 118
    iput p2, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->id:I

    .line 120
    invoke-static {p1}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string p1, "<No Name>"

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->name:Ljava/lang/String;

    return-object v0
.end method
