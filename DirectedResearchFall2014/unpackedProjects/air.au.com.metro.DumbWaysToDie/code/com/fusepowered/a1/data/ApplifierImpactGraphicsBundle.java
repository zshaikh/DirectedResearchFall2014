package com.fusepowered.a1.data;

import android.graphics.*;

public class ApplifierImpactGraphicsBundle
{
    public static String ICON_AUDIO_MUTED_32x32;
    public static String ICON_AUDIO_MUTED_50x50;
    public static String ICON_AUDIO_UNMUTED_32x32;
    public static String ICON_AUDIO_UNMUTED_50x50;
    
    static {
        ApplifierImpactGraphicsBundle.ICON_AUDIO_UNMUTED_50x50 = "iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MzFENDhCMTFBRkUwMTFFMkFGQUU4NzY0Nzk1MUZGRDkiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MzFENDhCMTJBRkUwMTFFMkFGQUU4NzY0Nzk1MUZGRDkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDozMUQ0OEIwRkFGRTAxMUUyQUZBRTg3NjQ3OTUxRkZEOSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDozMUQ0OEIxMEFGRTAxMUUyQUZBRTg3NjQ3OTUxRkZEOSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PjqFjVMAAAM4SURBVHja7JltiExRGMdndteOtYrRtl7ykrVLoZWyhLx8QGiTRBu29oONhC+SNqUkJR8oRSkrW1s+beSLD5RaLBYpr4PYD8h6m5Zt2W2srv/Rf+rp1L0z195755rOqV/zzLm3e85/znme8zx3opZlRfKhFUTypBkhRogRYoQYIXkrZBjYCV6DO2CmH4MU+SxiFDgEdnOsaWAFeP4/CVG//ElOXLaRLp4xA+wBP8AJ8CloIWryZ7gCevvt4jkLwC7aY8B2YAXlI42gzUaE23YRXBPPrQ3C2UvBUXCWvuFF66OP9fP7ARDzU8hobqUmH1b4NmilPR9s9kvIVG6B+izvdyqAVCDYD05rYfoC6OF8t4BiN85eBSocBlZOGwcHQbUL4dEMUaqJz50E6rit2kEHfWQRWAgeU1xGIa2MGl43pxV5CDrBak66BtzgtSvsU764DBSC69lsrfE+heaotpWqxFZRIpvFfevFvVfBN9pLwMpc51qWiHJq0q/AOXFdrcAH2qvAcNpvwEva1XT8nAqJis847bVgLu3v4B7tCu08esLPcvpQKLLfPiaR6fA9h3YKvKAd49ZLty5hx8KUxneJeUwU/d2if5zo/xqmekRGrZ/CLrHpLxV2KqyFVcxmkvLAGxB2YZiEyPArHVam6OVi9WR/PIwrUixCaC94Jg7p6bQHNQefIuzBsAgZAcpoPwX3xSFZQ/stS+R0myVCdHeQpa6Ts6tTegfD7l3hC/NApTgce2mPFYlkAjzKtRDpIwkiW4OwLwt7uVjBDpKVEJU+LAa/HH7ZIg5Q4lHSqFKPNbTVYXlLXKvleBaz4QfZCjliV42JCSk28iVDmQdpfA9LW5WaHAZJ9s8GS2l3sthKZivE0mK4XVNFz3smfpVDXJF33FoF2tibwGTal3QRXkYt5ZTrtK3wLyuSPhgHtGKrUWTALX6fIwlWdG0eB4d9YALt4+BzEAeiqiO2gmMu31/ZtQ1gmyiszgd5sqdYd6vt8GWIYyYZnVRJu9fJZ/08R1q4p09pLyfc/I3czvo8It5t5STXuslzoZlb7SNDp5vWn0nE3whi/mc3QowQI8QIMUKMkDwS8keAAQB8AqeiaYlz+QAAAABJRU5ErkJggg==";
        ApplifierImpactGraphicsBundle.ICON_AUDIO_MUTED_50x50 = "iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MjA2OUVEMEFBRkUwMTFFMkFGQUU4NzY0Nzk1MUZGRDkiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MzFENDhCMEVBRkUwMTFFMkFGQUU4NzY0Nzk1MUZGRDkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoyMDY5RUQwOEFGRTAxMUUyQUZBRTg3NjQ3OTUxRkZEOSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDoyMDY5RUQwOUFGRTAxMUUyQUZBRTg3NjQ3OTUxRkZEOSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PhHfbSYAAASlSURBVHja7JrbqxdVFMf3zPkdLRMFNfMEhqBGKhplvQheypfqQQJR6PKibyGomCbSQw/ezy3OOf0FWtlD1GsPPdRjSKAePd5SEdRACsTyQdPG74Y1tVrttW8zIMhvw4czv5m9Z/Z3r7XXmr3nFFVVmcehlOYxKVxIwZC/+Xkj6pjIa4XjWSltooTYBrWPVeK3EceFaMPrFqJN4fhbH8vfWpuo0lFuYDI6KB/qq1OIASocg5YkplQeqo2YCQg2DsEm0SJ1mZxikVJ5qMuntdGtHCPss6ImqG7bAwbBafB2kzliIlwldo745pzLItYKo+BDsAC8Fh22bB5hFI7f8pyvja/uPLBA1OP3fwKMVv+Wk+D5wLP/QXY4BxO4NhnsAlfARbDSIbrHIWJRrAiXEOPoiFE6ro0sP34OfFv9txwSnZgkRJwGi1NEcCEh19JEaVawrALj1f/LKKvzJPiMXbP1X4h0VdUiMSMdYx3LZvBb5S7bqE4HjLHzJ3JFSIvEuFZIeC/YCx4oIgZBSXNixONORROL5E7o+voscKTSy0DknCgSImZQSKppbVj93iNiiO5nLfGp4k5FrghtjqTeZAU44xExyOoOs/OnAu6UJKRgCyuZlVeAVx2Zu87I98E0sBU8o+TbYcrSJR1vo/MTYCM4E3gFin8DVkbBhsWzVbMyTK7US67FLbFIeUPIdW2jRSU7ca81EDHE7jXkcac+8CaYG8hn2XlkBrjcwBL1fQfZeTuPlrBr9t3qGwrVx8H0JnNEu5ArRHMnHmKnUC6xYfgoXb8H1jXJI6Wyhs7ZWhkBO8EDcBDsoPN2XbGBJvh6sIXufw/8RHV6wZK2Nh+qnEU/E7Ed/A36KVLZcg68A86C18EXYB4bqGsk3JY+pS9ZuygmwyojNPp2ZTcEdjERG8kia8DntHC6w9reBX/R8VRHX6pcixiPMFcZo9G3bQ8Id7JuNA5Wg2NixOsyhdzKlttNXLuTa0paktYJ7jD4iCW7d+mvXap+BWYrAzSXLGnLDc8eQXZCDEWtEVZ/gJ0/B5bStdXghqNtP3t5/JrO3QdvtRV+CxF+Lykixii89tBqz5UnVnkS6gDLI8fo3A8sj7SaEGeCq4qIkupIEbUl1oBfPdbsZx14mkT3NckhLovUjac5RnSM1T0k3OlFZonrgaQ5ELEjkyymo+wE2gjyCVhLkW2Ckpytvw/sZiF2A0WpleBL8GxoWnr2yrL3flNH4oBwp2XMEr9Hvsb0K15QNFkhlp6tfVlsnthDxxfAe+AU/b4FrrbwmUPuYmZZRFsl2uh0kI3oBTYnOHNYOE2dIzE7M8mTnTe2EWof68SEECEf+JR4dU8RYtoQojXcLyzxUmSY/ADcbmGONE6IpZjYNjm+HBhB+eA3wC+BzYhWlrkui9RzYi978HlmidQ9YrvV850Qcjiw29/KClGKsO60PNKXtWtTwcfkajfBWs/niFYmu+V94U6vRGyp+jay+fF8sDBhAJIs0hHR+A/wJ7gCNoGfI/edXF+t5LVLyhcwX5vo7C6FnAc/UqIbjxAR8/XXBDoUun9cJu3+C0dXSFdIV0hXyKMoDwUYAHkniskLXeVmAAAAAElFTkSuQmCC";
        ApplifierImpactGraphicsBundle.ICON_AUDIO_UNMUTED_32x32 = "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NEFDNDRCRTRBRkUwMTFFMkFGQUU4NzY0Nzk1MUZGRDkiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NEFDNDRCRTVBRkUwMTFFMkFGQUU4NzY0Nzk1MUZGRDkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0QUM0NEJFMkFGRTAxMUUyQUZBRTg3NjQ3OTUxRkZEOSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo0QUM0NEJFM0FGRTAxMUUyQUZBRTg3NjQ3OTUxRkZEOSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pkm4H1EAAAIYSURBVHja7NdNSBRhHMdxZ7VILVPCd/HtpNElRURBwUo9CHmSUgykw15K8NBNO5aHTgqeO3UUfNebeCjw0CEIxEMRGBmISlSg6+r0feAnTNvMuLOrSbQPfJh55nmZ/zzPzPMwlm3baeeZQmnnnFIB/PMB5OAFJlGSSAcZSQZQjx7koQBf/uYIPMYMKpCJwhPqvkLpaYxApob9keOaWUwOfdqYsj78RPi3ErMQBVCEOfvPtI87Pu1CWFLdJmdZkCm4gVl0eZTHLqmX8QQdOMK4rof9psAU1iDfMaS2OriFygABX8IQDnATy3inByjDZ7cpWEHUDp7MFLSpj1ZU6PyZynuVf678fa8pODzhZfJL5kmLMY0JXVvUsVPHVR3rvD5D22Uu403p2MJHNKIIH7CtaTXpE37g2lksxRai+IoryMV3MefZOjcjdfUsArAdL19UN8qQiCNvaS059QCONLTXsYkNTcPxEh3ReRYuen2G6UkEFdKTv8aKbtigm71RnVrlt7wC2FPDCy4voxXHxvYN9/QlmXy/yuZ1bMc+FrwCeKpNJSfmczSNujEQx0gctzP9lOMl3qJKAbzHVCJ7gVnPhxHxWIhuu9QvRpbyI6o76KwXdDMyHmA34GZUgx2sIS/ZAIwWrMcE0O5Tf0z17saWJRqAUY1FdRyJYwSa3cqsJH9MqjGqF+6hluFgy2fqzygVwH8fwC8BBgCfIMq53HvyNAAAAABJRU5ErkJggg==";
        ApplifierImpactGraphicsBundle.ICON_AUDIO_MUTED_32x32 = "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NEFDNDRCRThBRkUwMTFFMkFGQUU4NzY0Nzk1MUZGRDkiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NEFDNDRCRTlBRkUwMTFFMkFGQUU4NzY0Nzk1MUZGRDkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0QUM0NEJFNkFGRTAxMUUyQUZBRTg3NjQ3OTUxRkZEOSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo0QUM0NEJFN0FGRTAxMUUyQUZBRTg3NjQ3OTUxRkZEOSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PgbU5xMAAALJSURBVHja7JdLS1ZBGMfPvL1GYiElhnQzjBYRSNSmImgRBWXZjUKI0syCrn6EvkH76LqylvWWq1YFXciyRataCGFQLruAKdr0n/qfeHycOTNnZYsGfpx35syZ55nnNvMaa202l63CpyHyd6ifJfwu+nZGqxYs5mv5e8vfNqKETbGAnOT7wIpx61HIeubnT7fBVtAYc4ENLOCzig0oZj2WOQ/egf6gCVwQEiOeJjCeqXeOtWAnmK/GL9k/7TnYqt79RQvUgmPCD4GPYBJsF+MXKfwlWB4SniuQYgGjxt1uL4MJCvpJZdy7fiF8VUDxWQqELOBTaAm4Y2e2e6ACzgmzL/OsVegCUzSRtIEnHuELQB/7r9XOTYoC8jkP1Cky+vi9El7ju1PsPwUrlJDCTRlVipeCK6AZTKsU2wyaxNwaOAqOgRtgGBwAo5GiNSsNpYk2MqBirUaf97L/jNHu1jkINgXipzALHO1gPCL8PrMgN/sQaOb3K8EYGGZcZKkxYBIVeAiqoFtEu8uKLhajjEH6HaxPUaASqP2+9oA+7ga3wRDoANvANVHvx0ADWJSw5u/DInTiyTbIgOsC18ErsIvC74J6MM65C8EkmEi6EKhU8blgkAF3kv0XoAnsA984Ng12g0YwCj6IuMhiQSj9s0GU19zn9eA4+2/AYrBHCM8V6GBwXgVnU+uAnrQOfBHCXVE6IXbudtUJviorOQX2ewqQKZsFdax4e0ED6KEAl1Yt4DD44cmOKSqWFRzjXqoq+KbAY/Z7wC0G3BHwGbQkXtts8rUskKtnxM5bldbO158iLjBlDiNNnwi4toCC7Tz1fAqYMi7QE06LI3V1JIVcTAwIBTrL+l9bIM/zt2BNIJK1JVyWXAA3qVBWcJuKHscDYAvYAUYCwWbVeOiablJLvMyCRzzTRyJCsxJRbmNZY/6V/4b/FZiz9kuAAQDEPDSbpTSSuQAAAABJRU5ErkJggg==";
    }
    
    public static Bitmap getBitmapFromString(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: aconst_null    
        //     3: astore_2       
        //     4: aload_0        
        //     5: ifnull          146
        //     8: ldc             "android.util.Base64"
        //    10: invokestatic    java/lang/Class.forName:(Ljava/lang/String;)Ljava/lang/Class;
        //    13: astore_1       
        //    14: aload_1        
        //    15: ifnull          148
        //    18: iconst_2       
        //    19: anewarray       Ljava/lang/Class;
        //    22: astore          8
        //    24: aload           8
        //    26: iconst_0       
        //    27: ldc             Ljava/lang/String;.class
        //    29: aastore        
        //    30: aload           8
        //    32: iconst_1       
        //    33: getstatic       java/lang/Integer.TYPE:Ljava/lang/Class;
        //    36: aastore        
        //    37: aload_1        
        //    38: ldc             "decode"
        //    40: aload           8
        //    42: invokevirtual   java/lang/Class.getMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //    45: astore          9
        //    47: aload           9
        //    49: astore          4
        //    51: new             Ljava/lang/StringBuilder;
        //    54: dup            
        //    55: ldc             "METHOD: "
        //    57: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    60: aload           4
        //    62: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    65: ldc             ", "
        //    67: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    70: aload_1        
        //    71: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    74: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    77: ldc             Lcom/fusepowered/a1/data/ApplifierImpactGraphicsBundle;.class
        //    79: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Class;)V
        //    82: iconst_2       
        //    83: anewarray       Ljava/lang/Object;
        //    86: astore          7
        //    88: aload           7
        //    90: iconst_0       
        //    91: aload_0        
        //    92: aastore        
        //    93: aload           7
        //    95: iconst_1       
        //    96: iconst_0       
        //    97: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   100: aastore        
        //   101: aload           4
        //   103: aconst_null    
        //   104: aload           7
        //   106: invokevirtual   java/lang/reflect/Method.invoke:(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
        //   109: checkcast       [B
        //   112: astore          6
        //   114: new             Ljava/lang/StringBuilder;
        //   117: dup            
        //   118: ldc             "BITMAPDATA: "
        //   120: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   123: aload           6
        //   125: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   128: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   131: ldc             Lcom/fusepowered/a1/data/ApplifierImpactGraphicsBundle;.class
        //   133: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Class;)V
        //   136: aload           6
        //   138: iconst_0       
        //   139: aload           6
        //   141: arraylength    
        //   142: invokestatic    android/graphics/BitmapFactory.decodeByteArray:([BII)Landroid/graphics/Bitmap;
        //   145: astore_2       
        //   146: aload_2        
        //   147: areturn        
        //   148: ldc             "Could not find base64 decode class"
        //   150: ldc             Lcom/fusepowered/a1/data/ApplifierImpactGraphicsBundle;.class
        //   152: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Class;)V
        //   155: aconst_null    
        //   156: astore          4
        //   158: goto            51
        //   161: astore_3       
        //   162: ldc             "Proper decode method could not be found, disabling mute-button feature"
        //   164: ldc             Lcom/fusepowered/a1/data/ApplifierImpactGraphicsBundle;.class
        //   166: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Class;)V
        //   169: aconst_null    
        //   170: astore          4
        //   172: goto            51
        //   175: astore          5
        //   177: ldc             "Problems invoking decode method"
        //   179: ldc             Lcom/fusepowered/a1/data/ApplifierImpactGraphicsBundle;.class
        //   181: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Class;)V
        //   184: aconst_null    
        //   185: astore          6
        //   187: goto            114
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  8      14     161    175    Ljava/lang/Exception;
        //  18     47     161    175    Ljava/lang/Exception;
        //  82     114    175    190    Ljava/lang/Exception;
        //  148    155    161    175    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0114:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
}
