---
layout: page
icon: fas fa-address-book
order: 2
---

<div id="portfolio">
    {% for project in site.portfolio %}
        <div class="card post-preview">
            <div class="card-body">
                <h1 class="card-title">{{ project.name }}</h1>

                {% if project.link %}
                    <a href="{{ project.link }}">Website</a>
                {% endif %}

                <div class="card-text post-content" >
                    {{ project.content | markdownify }}
                </div>
            </div>
        </div>
    {% endfor %}
</div>
