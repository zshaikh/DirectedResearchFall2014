.class public Lcom/mobileapptracker/TimeIgnoringComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/Calendar;

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/mobileapptracker/TimeIgnoringComparator;->compare(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 5
    .param p1, "c1"    # Ljava/util/Calendar;
    .param p2, "c2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method
